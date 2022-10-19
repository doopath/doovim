import sys
import os
import traceback
import shutil


def require_linux(os: str) -> None:
    assert os == 'linux', 'Your current os is not a Linux distro! ' +\
        'This script only available on Linux!'


def get_app_dir() -> str:
    return os.path.dirname(os.path.abspath(sys.argv[0]))


def get_log_file() -> str:
    return os.path.join(get_app_dir(), 'logfile.log')


class Logger:
    def __init__(self):
        self._app_dir = get_app_dir()
        self._log_file = get_log_file()

    @staticmethod
    def beautify_exception(exc: Exception) -> str:
        return f'Error: {type(exc).__name__}: {exc}'

    def log_traceback(self) -> None:
        tb = traceback.format_exc()

        with open(self._log_file, 'a') as file:
            file.write(tb)


class Installer:
    def __init__(self):
        self._app_dir = get_app_dir()
        self._logfile = get_log_file()
        self._nvim_config_dir = self._get_nvim_config_dir()
        self._doovim_config_dir = self._get_doovim_config_dir()

    def _get_nvim_config_dir(self) -> str:
        return os.path.expanduser('~/.config/nvim')

    def _get_doovim_config_dir(self) -> str:
        return os.path.join(self._app_dir, 'config')

    def _is_nvim_config_exists(self) -> bool:
        return os.path.exists(self._nvim_config_dir)

    def _create_nvim_config_dir(self) -> None:
        os.mkdir(self._nvim_config_dir)

    def _archive_nvim_config(self) -> None:
        shutil.move(self._nvim_config_dir, self._nvim_config_dir + '.bak')

    def _setup_nvim_config(self) -> None:
        if self._is_nvim_config_exists():
            print('You already have nvim configuration, so the current config ' \
                  'will be saved as nvim.bak in your .config directory.\n')
            self._archive_nvim_config()

        self._create_nvim_config_dir()

    def _install_vim_plug(self) -> None:
        print('\nInstalling vim-plug...')
        os.system('sh -c \'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}' \
                  '"/nvim/site/autoload/plug.vim --create-dirs ' \
                  'https://raw.githubusercontent.com/junegunn' \
                  '/vim-plug/master/plug.vim\''\
                  f' >> {self._logfile}')
        print('vim-plug was successfully installed!\n')

    def _show_installation_end(self) -> None:
        print('Congrats! Doovim config was successfully installed! ' \
              'Now you need to install npm, nodejs from your distro\'s repos ' \
              'and also install pynvim and yarn from pip and npm.\n' \
              'After you open nvim it will show you a bunch or errors, ' \
              'you just need to run :PlugInstall and :UpdateRemotePlugins ' \
              'and then restart nvim.\n' \
              'Also, I highly recommend to you to install some of NerdFonts for better expirience.\n' \
              'With love by doopath\n' \
              'Any questions: doopath@gmail.com\n')

    def install(self):
        self._setup_nvim_config()
        self._install_vim_plug()

        operation_counter = 1

        for file in os.listdir(self._doovim_config_dir):
            src = os.path.join(self._doovim_config_dir, file)
            dst = os.path.join(self._nvim_config_dir, file)

            print(f'{operation_counter}. Copying {src} to {dst}!')

            if os.path.isfile(src):
                shutil.copy(src, dst)
            else:
                shutil.copytree(src, dst)

            print(f'{operation_counter}. {src} successfully copied to {dst}!\n')
            operation_counter += 1

        self._show_installation_end()


def main() -> None:
    try:
        require_linux(sys.platform)
        Installer().install()
    except Exception as exc:
        print(Logger.beautify_exception(exc))
        Logger().log_traceback()
        sys.exit(1)


if __name__ == '__main__':
    main()

