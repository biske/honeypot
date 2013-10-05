module NavigacioniPomagac
    #
    def path_to(page_name)
        case page_name
        when /^login page|sign in page$/
            new_user_session_path
        else
            raise "Ne mogu da nadjem preslikavanje sa \"#{page_name}\" na putanju.\n" +
                "Dodaj mapiranje u fajlu #{__FILE__}."
        end
    end
end

World(NavigacioniPomagac)