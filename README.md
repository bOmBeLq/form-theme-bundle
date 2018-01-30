About
------------
Form theme bundle enables ability to define form theme in FormType classes.

There is pull request implementing this feature awaiting review: https://github.com/symfony/symfony/pull/23990

Installation
------------
1. `composer require bml/form-theme-bundle`
2. If you are not using symfony flex add 
`new Bml\FormThemeBundle\BmlFormThemeBundle()` to your `AppKernel.php`

Usage
------------

To define form type theme define `theme` option for the form. For example in Type class:
```php
class YourType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
           ->add('field')
           [...]
    }
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'theme' => 'app/form/my_type_theme.html.twig'
        ]);
    }
}
```
When you call `createView()` on your form this bundle will call equivalent to `{% form_theme form 'app/form/my_type_theme.html.twig' %}` on your form in background.
