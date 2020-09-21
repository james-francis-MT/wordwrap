class Wordwrap
    def word_wrap(string, width)
        if width < 1
            return nil
        end

        if string == nil
            return ""
        end

        if string.length <= width
            return string
        else
            space = string.index(" ")
            if space != nil
                return break_between(string, space, space+1, width)
            else
                return break_between(string, width, width, width)
            end
        end

    end

    def break_between(string, start, endpoint, width)
        string[0...start] + "\n" + word_wrap(string[endpoint..-1], width)
    end
end


# 'abc123abc123'.sub(/.*\Kabc/, 'ABC')
# #=> "abc123ABC123"

 # if string.length > width
        #     if string[width] == " "
        #         string[width] = "\n"
        #         return string
        #     else
        #         split_string = [string[0..(width)], string[(width + 1)..-1]]
        #         split_string[0] = split_string[0].sub(/.*\K\s/, "\n")
        #         return split_string.join
        #     end
        # end
        # string