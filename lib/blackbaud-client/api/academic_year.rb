module Blackbaud
  class AcademicYear < BlackbaudObject
    attr_accessor(:description, :ea7_academic_year_id, :end_date, :school_id, :school_name, :sessions, :short_description, :start_date, :links)

    def initialize(values)

      values["sessions"].map! {|s| Blackbaud::Session.new(s)} if values["sessions"]

      ["start_date", "end_date"].each do |date|
        send("#{date}=".intern, format_date(values["#{date}"]))
        values.delete("#{date}")
      end

      values.each do |k,v|
        send("#{k}=".intern, v)
      end

    end

  end
end