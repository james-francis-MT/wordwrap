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
            space = string[0..width].rindex(" ")
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
