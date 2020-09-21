class Wordwrap
    def word_wrap(string, width)
        if string.length > width
            return string.gsub(" ", "\n")
        end
        string
    end
end


