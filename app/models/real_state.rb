class RealState < ApplicationRecord
  enum real_state_types: [:house, :department, :land, :commercial_ground]

  validates_length_of :name, :minimum => 1, :maximum=>128
  validates_inclusion_of :real_state_type, in: real_state_types.keys
  validates_length_of :street, :minimum => 1, :maximum=>128
  validates_length_of :external_number, :minimum => 1, :maximum=>12
  validates :external_number, format: { with: /[a-zA-Z0-9\-]+\z/, message: "only alphanumerics and dash (-)" }
  validates_presence_of :internal_number, if: :internal_number_is_required?
  validates :internal_number, format: { with: /[a-zA-Z0-9\-\ ]+\z/, message: "only alphanumerics, dash (-) and blank spaces" }, if: :internal_number_is_required?
  validates_length_of :neighborhood, :minimum => 1, :maximum=>128
  validates_length_of :city, :minimum => 1, :maximum=>64
  validates_length_of :country, :is => 2
  validates :country, format: {
    with: /A[^ABCHJKNPVY]|B[^CKPUX]|C[^BEJPQST]|D[EJKMOZ]|E[CEGHRST]|F[IJKMOR]|G[^CJKOVXZ]|H[KMNRTU]|I[DEL-OQ-T]|J[EMOP]|K[EGHIMNPRWYZ]|L[ABCIKR-VY]|M[^BIJ]|N[ACEFGILOPRUZ]|OM|P[AE-HK-NRSTWY]|QA|R[EOSUW]|S[^FPQUW]|T[^ABEIPQSUXY]|U[AGMSYZ]|V[ACEGINU]|WF|WS|YE|YT|Z[AMW]\z/,
    message: "only ISO 3166 alpha 2 codes" }
  validates_numericality_of :rooms, :greater_than_or_equal_to => 0
  validates_numericality_of :bathrooms, :greater_than => 0.0, unless: :can_have_zero_bathrooms?
  validates_numericality_of :bathrooms, :greater_than_or_equal_to => 0.0, if: :can_have_zero_bathrooms?
  validates_length_of :comments, :minimum => 0, :maximum=>128

  private

  def internal_number_is_required?
    [:department, :commercial_ground].include? self.real_state_type&.to_sym
  end

  def can_have_zero_bathrooms?
    [:land, :commercial_ground].include? self.real_state_type&.to_sym
  end
end
