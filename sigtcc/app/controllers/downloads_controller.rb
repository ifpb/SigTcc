class DownloadsController < ApplicationController

  def show
    respond_to do |format|
      format.pdf { send_invoice_pdf }
      #File.delete(Rails.root + '/public/ata_defesa.pdf')
    end
  end



  def invoice_pdf
    ata_defesa = AtaDefesa.find(params[:ata_defesa_id])
   InvoicePdf.new(ata_defesa)

  end

  def send_invoice_pdf
    send_file invoice_pdf.to_pdf, filename: invoice_pdf.filename, type: "application/pdf",  disposition: "inline"
  end
end
