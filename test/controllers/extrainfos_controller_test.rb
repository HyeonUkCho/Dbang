require 'test_helper'

class ExtrainfosControllerTest < ActionController::TestCase
  setup do
    @extrainfo = extrainfos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:extrainfos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create extrainfo" do
    assert_difference('Extrainfo.count') do
      post :create, extrainfo: { aircon: @extrainfo.aircon, cleanfee: @extrainfo.cleanfee, enterdate: @extrainfo.enterdate, house_id: @extrainfo.house_id, internet: @extrainfo.internet, laundary: @extrainfo.laundary, managebool: @extrainfo.managebool, managefee: @extrainfo.managefee, parking: @extrainfo.parking, pet: @extrainfo.pet, television: @extrainfo.television, waterfee: @extrainfo.waterfee }
    end

    assert_redirected_to extrainfo_path(assigns(:extrainfo))
  end

  test "should show extrainfo" do
    get :show, id: @extrainfo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @extrainfo
    assert_response :success
  end

  test "should update extrainfo" do
    patch :update, id: @extrainfo, extrainfo: { aircon: @extrainfo.aircon, cleanfee: @extrainfo.cleanfee, enterdate: @extrainfo.enterdate, house_id: @extrainfo.house_id, internet: @extrainfo.internet, laundary: @extrainfo.laundary, managebool: @extrainfo.managebool, managefee: @extrainfo.managefee, parking: @extrainfo.parking, pet: @extrainfo.pet, television: @extrainfo.television, waterfee: @extrainfo.waterfee }
    assert_redirected_to extrainfo_path(assigns(:extrainfo))
  end

  test "should destroy extrainfo" do
    assert_difference('Extrainfo.count', -1) do
      delete :destroy, id: @extrainfo
    end

    assert_redirected_to extrainfos_path
  end
end
