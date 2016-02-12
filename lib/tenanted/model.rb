module Tenanted
  module Model
    def postgresql?
      connection.adapter_name == 'PostgreSQL'
    end

    def tenanted
      self.table_name = "public.#{self.table_name}" if postgresql?
    end
  end
end
