require 'test_helper'

class LoadPdfsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @load_pdf = load_pdfs(:one)
  end

  test "should get index" do
    get load_pdfs_url
    assert_response :success
  end

  test "should get new" do
    get new_load_pdf_url
    assert_response :success
  end

  test "should create load_pdf" do
    assert_difference('LoadPdf.count') do
      post load_pdfs_url, params: { load_pdf: { html: @load_pdf.html, load_id: @load_pdf.load_id } }
    end

    assert_redirected_to load_pdf_url(LoadPdf.last)
  end

  test "should show load_pdf" do
    get load_pdf_url(@load_pdf)
    assert_response :success
  end

  test "should get edit" do
    get edit_load_pdf_url(@load_pdf)
    assert_response :success
  end

  test "should update load_pdf" do
    patch load_pdf_url(@load_pdf), params: { load_pdf: { html: @load_pdf.html, load_id: @load_pdf.load_id } }
    assert_redirected_to load_pdf_url(@load_pdf)
  end

  test "should destroy load_pdf" do
    assert_difference('LoadPdf.count', -1) do
      delete load_pdf_url(@load_pdf)
    end

    assert_redirected_to load_pdfs_url
  end
end
