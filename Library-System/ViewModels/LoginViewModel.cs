using Libary_System.Models;
using System.Security;
using System.Windows.Input;
using Libary_System.Repositories;
using System.Net;
using System.Security.Principal;

namespace Libary_System.ViewModels
{
    public class LoginViewModel : ViewModelBase
    {
        //Fields 
        private string _userName = "UserName";
        private SecureString _password;
        private string _errorMessage;
        private bool _isViewVisible = true;
        private IUserRepository _userRepository;

        //Properties
        public string UserName
        {

            get => _userName;
            set
            {
                _userName = value;
                OnPropertyChanged(nameof(UserName));
            }
        }
        public SecureString Password
        {

            get => _password;
            set
            {
                _password = value;
                OnPropertyChanged(nameof(Password));
            }
        }
        public string ErrorMessage
        {

            get => _errorMessage;
            set
            {
                _errorMessage = value;
                OnPropertyChanged(nameof(ErrorMessage));
            }
        }
        public bool IsViewVisible
        {

            get => _isViewVisible;
            set
            {
                _isViewVisible = value;
                OnPropertyChanged(nameof(IsViewVisible));
            }
        }

        //Commands
        public ICommand LoginCommand { get; }
        public ICommand RecoverPasswordCommand { get; }
        public ICommand ShowPasswordCommand { get; }
        public ICommand RememberPasswordCommand { get; }

        // Constructor
        public LoginViewModel()
        {
            _userRepository = new UserRepository();
            LoginCommand = new ViewModelCommand(ExecuteLoginCommand, CanExecuteLoginCommand);
            RecoverPasswordCommand = new ViewModelCommand(p => ExecuteRecoverPassCommand("", ""));
        }

        //Login Validation
        private bool CanExecuteLoginCommand(object obj)
        {
            //if dili sya null ang password or username ug ang length nila each matrue sya makalogin;
            return !(string.IsNullOrWhiteSpace(UserName) || (UserName.Length < 3 || Password == null || Password.Length < 3));

        }
        private void ExecuteLoginCommand(object obj)
        {
            var isValidUser = _userRepository.AuthenticateUser(new NetworkCredential(UserName,Password));
            if (isValidUser)
            {
                Thread.CurrentPrincipal = new GenericPrincipal(new GenericIdentity(UserName),null);
                IsViewVisible = false;
            }
            else
            {
                ErrorMessage = "*Invalid Username or Password";
            }
        }

        private void ExecuteRecoverPassCommand(string username, string email)
        {
            throw new NotImplementedException();
        }




    }
}
