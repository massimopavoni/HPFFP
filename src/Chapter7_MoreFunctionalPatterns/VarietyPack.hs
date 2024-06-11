module Chapter7_MoreFunctionalPatterns.VarietyPack where

func :: (a, b, c) -> (d, e, f) -> ((a, d), (c, f))
func (a, _, c) (d, _, f) = ((a, d), (c, f))