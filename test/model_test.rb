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

    test 'should return new record when not set' do
      Tenant.current_tenant = nil
      assert Tenant.current_tenant.new_record?
    end

    test 'should be able to track current tenant' do
      tenant = Tenant.new subdomain: 'customer1'

      Tenant.current_tenant = tenant
      assert_equal tenant, Tenant.current_tenant
    end
  end
end
