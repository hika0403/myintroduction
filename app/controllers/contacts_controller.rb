class ContactsController < ApplicationController
  def index
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.valid?
      ContactMailer.send_mail(@contact).deliver_now
      redirect_to ({action: :index}), notice: 'お問い合わせ内容を送信しました'
    else
      render :index
    end
  end

  # def confirm
  #   @contact = Contact.new(contact_params)
  #   if @contact.valid?
  #     render :action => 'confirm'
  #   else
  #     render :action => 'index'
  #   end
  # end

  # def done
  #   @contact = Contact.new(contact_params)
  #   if params[:back]
  #     render :action => 'index'
  #   else
  #     ContactMailer.send_mail(@contact).deliver_now
  #     render :action => 'done'
  #   end
  # end

  private
    def contact_params
      params.require(:contact).permit(:name, :email, :content)
    end
end
