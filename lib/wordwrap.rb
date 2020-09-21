class Wordwrap
    def word_wrap(string, width)
        if string.length > width
            return string.sub(/.*\K\s/, "\n")
        end
        string
    end
end


# 'abc123abc123'.sub(/.*\Kabc/, 'ABC')
# #=> "abc123ABC123"

