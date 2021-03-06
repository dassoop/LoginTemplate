package com.soop.securitydojotemplate.validators;

import com.soop.securitydojotemplate.models.User;
import com.soop.securitydojotemplate.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

@Component
public class UserValidator implements Validator
{
    @Autowired
    UserRepository userRepo;

    //    1
    @Override
    public boolean supports(Class<?> clazz)
    {
        return User.class.equals(clazz);
    }

    // 2
    @Override
    public void validate(Object object, Errors errors) {
        User user = (User) object;

        if (!user.getPasswordConfirmation().equals(user.getPassword())) {
            // 3
            errors.rejectValue("passwordConfirmation", "Match");
        }
        if (this.userRepo.existsByUsername(user.getUsername()))
        {
            errors.rejectValue("username", "Name");
        }
        if (this.userRepo.existsByEmail(user.getEmail()))
        {
            errors.rejectValue("email", "Email");
        }
    }
}
