# rust-cute-vim

Cute ligatures for Rust in Vim:

```rust
fn random() -> usize {
    if 5 <= 10 {
        3
    } else {
        2
    }
}
```

renders as

```rust
fn random() → usize {
    if 5 ≤ 10 {
        3
    } else {
        2
    }
}
```
Inspired by [vim-cute-python](https://github.com/ehamberg/vim-cute-python/).
