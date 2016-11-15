def reformat_languages(languages)
  newhash = {}

  languages.values.each do |x|
  	x.keys.each do |y|
  		newhash[y] = {:type => "", :style => []}
  	end
  end

  languages.values.each do |langtype|
  	langtype.each do |k, v|
  		newhash[k.to_sym][:type] = v.values[0]
  	end
  end

  languages.each do |keystyle, keyval|
  	keyval.each do |key, val|
  		newhash[key.to_sym][:style] << keystyle
  	end
  end
  return newhash
end
