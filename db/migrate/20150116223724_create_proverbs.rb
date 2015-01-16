class CreateProverbs < ActiveRecord::Migration
  def change
    create_table :proverbs do |t|
      t.text :text

      t.timestamps
    end
    create_proverbs
  end

  def create_proverbs 
    dict_path = "#{Rails.root}/db/proverbs.json"
    
    File.open(dict_path) do |f| 
    	dicts = JSON.parse(f.read)
    	dicts.each do |text|
    		Proverb.create( 
    			:text => text
    		 )
    	end
    end
  end
end
