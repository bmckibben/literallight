class MusingSearchTerm
	attr_reader :where_clause, :where_args
	
	def initialize(search_term)
		search_term = search_term_downcase
		@where_clause = ""
		@where_args = {}
		build_for_name_search(search_term)
	end		

	def case_insensitive_search(field_name)	
		"lower(#{field_name}) like :#{field_name}"
	end

	def build_for_name_search(search_term)
		@where_clause << case_insensitive_search(:notes)
		@where_args[:notes] = starts_with(search_term)
	end

end	