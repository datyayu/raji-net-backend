class AssociationLoader < GraphQL::Batch::Loader
  def initialize(model, association)
    @model = model
    @association = association
  end

  def perform(vals)
    ActiveRecord::Associations::Preloader.new.preload(vals, @association)
    vals.each { |val| fulfill(val, val.send(@association)) }
  end
end
