# encoding: cp866

def seek filename, path 
        puts path

    arr = Dir.entries path
    files = arr.select{|value| File.file?("#{path}/#{value}")}
    dirs = arr.select{|value| File.directory?("#{path}/#{value}")}
     
	files.each do |value|
	#puts "#{path}#{value}"
     
	  	#puts "#{value}==#{filename}"
	  	if value == filename
		 puts "Файл обнаружен в папке #{path}"
		 exit
	        end
		#else
	 	#seek(filename,"#{path}/#{value}")  if File.directory? ("#{path}/#{value}")
	    end
	
	
	 
	dirs.each do |value|
		
		seek(filename,"#{path}/#{value}")  if (File.readable?"#{path}/#{value}") && !("#{path}/#{value}".include? 'Recycle.Bin')
	end
	return
 end
	  
  filename=''
#filename='marina.txt'
while filename=='' do
	print 'Какой файл будем искать (пример 1.txt): '
	filename = gets.strip.chomp
end

seek(filename,'C:/')


