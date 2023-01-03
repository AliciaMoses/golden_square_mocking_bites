class SecretDiary
  def initialize(diary) # diary is an instance of Diary
    @diary = diary
    @locked = true 
  end

  def read
    fail "Go away!" if @locked
    return @diary.read
    # Raises the error "Go away!" if the diary is locked
    # Returns the diary's contents if the diary is unlocked
    # The diary starts off locked
  end

  def lock
     @locked = true
  end

  def unlock
    @locked = false
  end
end