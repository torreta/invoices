class Company < ActiveRecord::Base
  
  def self.import(file)
    #esta es la linea que realmente se encarga de la lectura del archivo
    CSV.foreach(file.path, headers: true) do |row|
      Company.create! row.to_hash
    end
  end
    
  #esta funcion transforma las filas de nuestro software en un csv
  def self.to_csv  
    CSV.generate do |csv|
      csv << column_names 
        all.each do |company|
          csv << company.attributes.values_at(*column_names)
        end 
    end
  end
  
  
end
