require "render_anywhere"

class InvoicePdf
  include RenderAnywhere

  def initialize(ata_defesa)
    @ata_defesa = ata_defesa
  end

  def to_pdf
    kit = PDFKit.new(as_html, page_size: 'A4')
    kit.to_file("#{Rails.root}/public/ata_defesa.pdf")
  end

  def filename
    "Arquivo #{ata_defesa.id}.pdf"
  end

  private

    attr_reader :ata_defesa

    def as_html
      render template: "ata_defesas/pdf", layout: "ata_defesa_pdf", locals: { ata_defesa: ata_defesa }
    end
end
