class Movie < ActiveRecord::Base

    def self.create_with_title(title)
       Movie.create(title: title)
    end
     #//class methods (.)
    def self.first_movie
        Movie.first
    end
     #//class methods (.)
    def self.last_movie
        Movie.last
    end
     #//class methods (.)
    def self.movie_count
        Movie.count
    end
     #//class methods (.)
    def self.find_movie_with_id(id)
        Movie.find(id)   
    end
      #//class methods (.)
    def self.find_movie_with_attributes(attribute)
        Movie.find_by(attribute)
    end
      #//class methods (.)
    def self.find_movies_after_2002
        Movie.where("release_date > 2002")
    end

    #//instance methods (#) 
    def update_with_attributes(attribute)
      self.update(attribute)
    end

    #//class methods (.)((
    def self.update_all_titles(title)
        Movie.update(title: title)
    end

     #//instance methods (#) 
    def self.delete_by_id(id)
        movie = Movie.find(id)
        movie.destroy
    end

    def self.delete_all_movies
     Movie.destroy_all
    end

end