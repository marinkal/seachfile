# encoding: cp1251

def seek filename, path
        
   begin
   arr = Dir.entries path
   rescue
   arr =[]
   end
    #puts "full massiv #{arr.inspect}" 
    #arr = arr.slice(start,arr.length-start)

    if arr
    
    files = arr.select{|value| File.file?("#{path}/#{value}")}
    dirs = arr.select{|value| !File.file?("#{path}/#{value}") && value[0]!="."}
      
        #puts arr.inspect
	#gets
 	#puts files.inspect
	#gets
#	puts dirs.inspect 
#	gets
      
	files.each do |value|
	#puts "#{path}/#{value}"
              #gets
	  	#puts "#{value}==#{filename}"
	  	if value == filename
		 puts "Файл обнаружен в папке: #{path}"
		 #exit
	        end
		#else
	 	#seek(filename,"#{path}/#{value}")  if File.directory? ("#{path}/#{value}")
	    end
	
	
	 
	dirs.each do |value|
		
		seek(filename,"#{path}/#{value}")  if File.writable?"#{path}/#{value}" 
	end
	end
	return
 end
	  
  filename=''
#filename='marina.txt'
while filename=='' do
	print 'Какой файл будем искать (например 1.txt): '
	filename = gets.strip.chomp
end

seek(filename,'C:/')


                   