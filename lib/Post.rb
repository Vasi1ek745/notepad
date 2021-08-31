class Post
   def initialize
    @created_at = Time.now
    @text = []
   end
   def self.post_types
      [Memo, Task, Link]
   end
   def self.create(type_index)
      return post_types[type_index].new
   end
   def rear_from_console

   end
   def to_string

   end

   def save
      file = File.new(file_path, "w")

      for item in to_strings do
         file.puts(item)
      end

      file.close
   end
   def file_path
      current_path = File.dirname(__FILE__)
      file_name = @created_at.strftime("#{self.class.name}_%Y-%m-%d_%H-%M-%S.txt")
      return current_path + "/" + file_name
   end
end





