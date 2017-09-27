class LoadMailer < ApplicationMailer

    def active_load(load)
        @load = load
        @driver = @load.driver_user 

        attachments['load.pdf'] =  WickedPdf.new.pdf_from_string(
        render_to_string(
        template: 'loads/show_template.pdf.erb', 
        layout: 'layouts/application.pdf.erb'))
        # send_action(pdf,
        # filename: '#{@load.id}#{@load.title}.pdf',
        # type: 'application/pdf',
        # disposition: 'attachment')     
        mail to: @load.driver_user.email, 
        subject: "New Load Pick Up In #{@load.origin_city}"
  
    end
  end
  
