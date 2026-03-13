class Asm < Formula
  desc "TUI for browsing, previewing, and resuming Claude Code & Codex sessions"
  homepage "https://github.com/NamhaeSusan/ai-session-manager"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/NamhaeSusan/ai-session-manager/releases/download/v#{version}/asm-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER" # Update after first release
    end

    on_intel do
      url "https://github.com/NamhaeSusan/ai-session-manager/releases/download/v#{version}/asm-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER" # Update after first release
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/NamhaeSusan/ai-session-manager/releases/download/v#{version}/asm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER" # Update after first release
    end
  end

  def install
    bin.install "asm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/asm --version")
  end
end
