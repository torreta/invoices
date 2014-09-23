class Company < ActiveRecord::Base
  
  def self.import(file)
    #esta es la linea que realmente se encarga de la lectura del archivo
    CSV.foreach(file.path, headers: true) do |row|
      Company.create! row.to_hash
    end
  end
    
  
end
