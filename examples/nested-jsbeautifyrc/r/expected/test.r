# a single line of comments is preserved
1 + 1

if (TRUE) {
  x = 1  # inline comments
} else {
  x = 2
  print("Oh no... ask the right bracket to go away!")
}
1 * 3  # one space before this comment will become two!
2 + 2 + 2  # 'short comments'

# only 'single quotes' are allowed in comments
df = data.frame(y = rnorm(100), x1 = rnorm(100), x2 = rnorm(100))
lm(y ~ x1 + x2, data = df)
1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 
  1 + 1  ## comments after a long line

## here is a long long long long long long long long long long long long long long
## long long long long long long comment
