class Asm < Formula
  desc "TUI for browsing, previewing, and resuming Claude Code & Codex sessions"
  homepage "https://github.com/NamhaeSusan/ai-session-manager"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/NamhaeSusan/ai-session-manager/releases/download/v#{version}/asm-aarch64-apple-darwin.tar.gz"
      sha256 "0f7e9b8c146bf32bd87e7693d7cff91840892bcc64a1c95f36281c1ad44b49a1"
    end

    on_intel do
      url "https://github.com/NamhaeSusan/ai-session-manager/releases/download/v#{version}/asm-x86_64-apple-darwin.tar.gz"
      sha256 "2f08bd6bf6298c9e7f63ec5406780f4276b3994b2be5d47b7b623efac1d941ff"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/NamhaeSusan/ai-session-manager/releases/download/v#{version}/asm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f66d8dd5d1b430e94f6bd2bcc0a17d5ac76b9b44247758a406b64037381ad3aa"
    end
  end

  def install
    bin.install "asm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/asm --version")
  end
end
