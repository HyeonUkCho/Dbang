require 'test_helper'

class NormalinfosControllerTest < ActionController::TestCase
  setup do
    @normalinfo = normalinfos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:normalinfos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create normalinfo" do
    assert_difference('Normalinfo.count') do
      post :create, normalinfo: { dealtype: @normalinfo.dealtype, house_id: @normalinfo.house_id, housetype: @normalinfo.housetype, monthlyfee: @normalinfo.monthlyfee, myfloor: @normalinfo.myfloor, totalfloor: @normalinfo.totalfloor, tradefee: @normalinfo.tradefee }
    end

    assert_redirected_to normalinfo_path(assigns(:normalinfo))
  end

  test "should show normalinfo" do
    get :show, id: @normalinfo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @normalinfo
    assert_response :success
  end

  test "should update normalinfo" do
    patch :update, id: @normalinfo, normalinfo: { dealtype: @normalinfo.dealtype, house_id: @normalinfo.house_id, housetype: @normalinfo.housetype, monthlyfee: @normalinfo.monthlyfee, myfloor: @normalinfo.myfloor, totalfloor: @normalinfo.totalfloor, tradefee: @normalinfo.tradefee }
    assert_redirected_to normalinfo_path(assigns(:normalinfo))
  end

  test "should destroy normalinfo" do
    assert_difference('Normalinfo.count', -1) do
      delete :destroy, id: @normalinfo
    end

    assert_redirected_to normalinfos_path
  end
end
