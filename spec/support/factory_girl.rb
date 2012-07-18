class CreateForDataMapper
  def initialize
    @default_strategy = FactoryGirl::Strategy::Create.new
  end

  delegate :association, to: :@default_strategy

  def result(evaluation)
    evaluation.singleton_class.send :define_method, :create do |instance|
      instance.save ||
        raise(instance.errors.send(:errors).map{|attr,errors| "- #{attr}: #{errors}" }.join("\n"))
    end

    @default_strategy.result(evaluation)
  end
end

FactoryGirl.register_strategy(:create, CreateForDataMapper)
