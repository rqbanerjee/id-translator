require 'digest'

class Identifier < ActiveRecord::Base

  validates_uniqueness_of :generated_id
  validates_presence_of :real_id
  #validates_presence_of :id_type

  belongs_to :id_type, :foreign_key => 'type_id'

  def real_id=(real)
    raise "real_id is nil" if real.nil? or real.empty?
    #keep re-hashing if there is a collision. in the address space of sha-1, this could never go into an infinite loop
    hashed = hash_id(real)
    while collision?(hashed)
      hashed = hash_id(hashed)
    end
    write_attribute(:generated_id, hashed)
    write_attribute(:real_id, real)
    save!
  end

  private
  def hash_id(to_hash)
    sha1 = Digest::SHA1.new
    hashed= (sha1.base64digest(to_hash)).to_s
    logger.debug "hashed #{to_hash} to hex #{hashed} (#{hashed.length} length)"

    hashed
  end

  # Returns true if the generated_id exists in the generated_id column of any identifier
  def collision?(generated_id)
    logger.info "checking collisions on #{generated_id.to_s}"
    collisions = Identifier.find_all_by_generated_id(generated_id.to_s)
    if collisions.nil? or collisions.empty?
      false
    else
      logger.info "generated ID #{generated_id} collided with #{collisions.size} other entities. Re-hashing"
      true
    end
  end
end
