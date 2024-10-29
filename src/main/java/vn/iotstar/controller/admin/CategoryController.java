package vn.iotstar.controller.admin;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.validation.Valid;
import vn.iotstar.entity.Category;
import vn.iotstar.model.CategoryModel;
import vn.iotstar.services.CategoryService;

@Controller
@RequestMapping("/admin/categories")
public class CategoryController {

    @Autowired
    private CategoryService categoryService;

    @GetMapping("")
    public String all(Model model) {
        List<Category> list = categoryService.findAll();
        model.addAttribute("list", list);  
        return "admin/category/list";
    }

    @GetMapping("/add")
    public String add(Model model) {
        CategoryModel category = new CategoryModel();
        category.setIsEdit(false);
        model.addAttribute("category", category);
        return "admin/category/add";
    }

    @PostMapping("/save")
    public String saveOrUpdate(Model model, @Valid @ModelAttribute("category") CategoryModel cateModel, BindingResult result) {
        if (result.hasErrors()) {
            return "admin/category/add";
        }

        Category entity = new Category();
        BeanUtils.copyProperties(cateModel, entity);
        categoryService.save(entity);

        String message = cateModel.getIsEdit() ? "Category is Edited!" : "Category is Saved!";
        model.addAttribute("message", message);
        return "forward:/admin/categories";
    }

    @GetMapping("/edit/{id}")
    public String edit(Model model, @PathVariable("id") Long categoryId) {
        Optional<Category> optCategory = categoryService.findById(categoryId);
        if (optCategory.isPresent()) {
            CategoryModel cateModel = new CategoryModel();
            Category entity = optCategory.get();
            BeanUtils.copyProperties(entity, cateModel);
            cateModel.setIsEdit(true);
            model.addAttribute("category", cateModel);
            return "admin/category/add";
        }
        model.addAttribute("message", "Category does not exist!");
        return "forward:/admin/categories";
    }

    @GetMapping("/delete/{id}")
    public String delete(Model model, @PathVariable("id") Long categoryId) {
        categoryService.deleteById(categoryId);
        model.addAttribute("message", "Category is deleted!");
        return "forward:/admin/categories";
    }
}
