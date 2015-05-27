class Blog

def initialize
    @publish_date = Time.now
    puts "Name your post."
    @title = gets.chomp
    @all_posts = []
    @total_posts = 0
end

def create_post
    new_post = Post.new
    puts "This is a new post."
    @all_posts << new_post
    @total_posts +=1

end

def collect_posts
    return @all_posts
end

def publish(all_posts)
    all_posts.each do |post|
        puts post.title
        puts post.publish_date
        puts post.content
end
end
end


class Post

def initialize
    @publish_date = Time.now
    puts "Name your post."
    @title = gets.chomp
    
    puts "New content"
    @content = gets.chomp
end

def edit_content
    puts "Change title"
    @title = gets.chomp
    
    puts "Change content"
    @content = gets.chomp
end

my_blog = Blog.new
first_post = my_blog.create_post
all_posts = my_blog.collect_posts
puts my_blog.inspect
my_blog.publish(all_posts)
end
