require 'test_helper'

module Tenanted
  class ModelTest < ActiveSupport::TestCase
    test 'tenant model should have correct table name' do
      if Tenant.postgresql?
        assert_equal 'public.tenants', Tenant.table_name
      else
        assert_equal 'tenants', Tenant.table_name
      end
    end
  end
end
