package models

type DevOpsweeklyNameNotFoundError struct{}

func (k *DevOpsweeklyNameNotFoundError) Error() string {
	return "DevOpsweekly name not found"
}
