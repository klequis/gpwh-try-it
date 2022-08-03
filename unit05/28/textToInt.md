```haskell
txtInt :: T.Text
txtInt = "2"
```

```haskell
tmpToInteger :: Integral a => T.Text -> Either String (a, T.Text)
tmpToInteger txt = TR.decimal txt
```
```haskell
> r2 = tmpToInteger txtInt
> r2
Right (2,"")
> :t r2
r2 :: Integral a => Either String (a, T.Text)
```

