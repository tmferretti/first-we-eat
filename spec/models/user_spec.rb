require "rails_helper"

describe User do
	it 'is valid with an email and password' do
		user = User.new(
			email: "email@email.com",
			password: "password"
			)

		expect(user).to be_valid
	end

	it 'is invalid without an email' do
		user = User.new(email: nil)
		user.valid?
		expect(user.errors[:email]).to include("can't be blank")
	end

	it 'is invalid without a password' do
		user = User.new(password: nil)
		user.valid?
		expect(user.errors[:password]).to include("can't be blank")
	end

	it 'is invalid with a duplicate email' do
		User.create(
			email: "test@testing.com",
			password: "password"
			)

		user = User.new(
			email: "test@testing.com",
			password: "password"
			)

		user.valid?
		expect(user.errors[:email]).to include("has already been taken")
	end
end