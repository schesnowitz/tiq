class LoadMailerWorker 
  include Sidekiq::Worker
  
  sidekiq_options retry: false
  
  def perform()
      format.pdf do 
        render pdf: @load.title, footer: { right: '[page] of [topage]' },     
        save_to_file: Rails.root.join('load_pdfs', "#{@load.id}#{@load.title}.pdf")

        LoadMailer.active_load(@load).deliver_later  
        locals: { @load: @load }
        
            send_data(pdf, filename: "test.pdf",  type: "application/pdf")
    end  
  end
end 