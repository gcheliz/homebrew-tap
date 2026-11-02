class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.36/gtunnel-macos-arm64-v0.3.36.tar.gz"
      sha256 "5fc492a53bf9cefb4e2834c84881924c591fae86af0c7553694d0759cfbca364"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.36/gtunnel-macos-intel-v0.3.36.tar.gz"
      sha256 "bdcc53adb3fb2cc897636c13f08c12db259565d99b644b52acacd0f5db50f796"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.36/gtunnel-linux-arm64-v0.3.36.tar.gz"
      sha256 "48736f463a0135ad11ae758b93bbf8de9cf1633a10897b39aaf4e62ab25736d6"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.36/gtunnel-linux-amd64-v0.3.36.tar.gz"
      sha256 "cd1d94170ef3934645912e5a280ad8662fd6493f2a3b395b561b07fe9bb5a2ad"
    end
  end

  def install
    bin.install "gtunnel"
    generate_completions_from_executable(bin/"gtunnel", "completions")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gtunnel --version")
  end
end
