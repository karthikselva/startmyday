class CreateDictionaries < ActiveRecord::Migration
  def change
    create_table :dictionaries do |t|
      t.string :word
      t.text :meaning
      t.string :language

      t.timestamps
    end
    create_words
  end

  def create_words 
    dict_path = "#{Rails.root}/db/dictionary.json"
    
    File.open(dict_path) do |f| 
    	dicts = JSON.parse(f.read)
    	dicts.each do |word,meaning|
    		Dictionary.create( 
    			:word => word,
    			:meaning => meaning,
    			:language => "English"
    		 )
    	end
    end
  end
end
