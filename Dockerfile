FROM rust:latest

ENV CARGO_HOME=/opt/.cargo

RUN rustup component add rustfmt clippy; \
        cargo install sccache --all-features;

RUN cargo install cargo-junit

ENV RUSTC_WRAPPER=${CARGO_HOME}/bin/sccache
