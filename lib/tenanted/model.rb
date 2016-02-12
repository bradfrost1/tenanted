module Tenanted
  module Model
    def postgresql?
      connection.adapter_name == 'PostgreSQL'
    end

    def tenanted
      self.table_name = "public.#{self.table_name}" if postgresql?
    end

    def current_tenant= value
      @@tenant = value
    end

    def current_tenant
      @@tenant || new
    end

    private

    @@tenant = nil
  end
end
