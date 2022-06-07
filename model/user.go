package model

const (
	MinUserNameLen = 1
	MinPasswordLen = 4
	NormalCustomer = "customer"
	NormalSeller   = "seller"
)

type LoginUser struct {
	Username string
	Password string
}

type RegisterUser struct {
	LoginUser
	King string
}

type User struct {
	Id       int    `gorm:"primary_key;auto_increment"`
	Username string `gorm:"type:varchar(20)"`
	Kind     string `gorm:"type:varchar(20)"`
	Password string `gorm:"type:varchar(32)"`
}

func (u User) IsCustomer() bool {
	return u.Kind == NormalCustomer
}

func (u User) IsSeller() bool {
	return u.Kind == NormalSeller
}

func (u User) IsValidKind() bool {
	return u.Kind == NormalCustomer || u.Kind == NormalSeller
}
