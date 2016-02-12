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

      if postgresql?
        ActiveRecord::Base.connection.schema_search_path = "tenant_#{@@tenant.id},public"
      else
        # TODO implement multi-tenancy for MySQL and SQLite3
      end
    end

    def current_tenant
      @@tenant || new
    end

    private

    @@tenant = nil
  end
end
