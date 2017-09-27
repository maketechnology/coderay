require 'digest/md5'

module CodeRay
	module Scanners
    
    # Scanner for plain text.
    # 
    # Yields just one token of the kind :plain.
    # 
    # Alias: +plaintext+, +plain+
	load :debug
		class Text < Debug
      
			register_for :text
			title 'Dzn'
		  
			KINDS_NOT_LOC = [:plain]  # :nodoc:
		  
			def initialize code = '', options = {}
=begin	
		puts "******** Estoy DENTRO del metodo initialize de la clase TEXT*************"
		puts "** code **"
		puts code
		puts "** Termina code **"	
		puts "///encodeing UTF8///"
		puts code.gsub(/\s+/, "").force_encoding(Encoding::UTF_8)
		puts "///termina encodeing UTF8///"
=end		
		
				hashCode = Digest::MD5.hexdigest code.gsub(/\s+/, "").force_encoding(Encoding::UTF_8)
=begin					
				puts "** hashCode **"
				puts hashCode
				puts "** Termina hashCode **"	
=end				
				puts "******** Dir.pwd *************"
				puts Dir.pwd + "/code/"
				puts "******** Termina Dir.pwd *************"
				
				#tokensFile = File.open('C:\Users\Emiliano\Trabajo\Dezyne\eclipse\ws\git\com.verum.dezyne.ui.test\target\jgiven-reports\asciidoc\code\\' + hashCode + '.tokens', 'r')
				tokensFile = File.open(Dir.pwd + "/code/" + hashCode + '.tokens', 'r')
				
				tokens = tokensFile.read
					
				puts "** tokens **"
				puts tokens
				puts "** Termina tokens **"	
				
				super(tokens,options)	
			end
		end
    end
	
end

puts "******** Entre a la clase TEXT *************"