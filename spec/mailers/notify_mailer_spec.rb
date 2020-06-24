RSpec.describe NotifyMailer, type: :mailer do
    describe '#new_product' do
        before :all do
            @user = create :user
            @product = create :product
        end

        it "sends an email" do
            expect { described_class.send_email(@product) }
            .to change { ActionMailer::Base.deliveries.count }.by(1)
        end
    end
end