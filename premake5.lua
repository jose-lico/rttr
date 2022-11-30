project "rttr"
	kind "StaticLib"
	language "C++"
	configmap 
	{
		["ReleaseWithInfo"] = "Release",
		["ReleaseNoImGui"] = "Release"
	}

	targetdir ("%{wks.location}/bin/" .. outputDir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputDir .. "/%{prj.name}")

	files
	{
		"src/rttr/access_levels.h",
		"src/rttr/argument.h",
		"src/rttr/array_range.h",
		"src/rttr/associative_mapper.h",
		"src/rttr/constructor.h",
		"src/rttr/destructor.h",
		"src/rttr/enumeration.h",
		"src/rttr/enum_flags.h",
		"src/rttr/filter_item.h",
		"src/rttr/instance.h",
		"src/rttr/library.h",
		"src/rttr/method.h",
		"src/rttr/policy.h",
		"src/rttr/property.h",
		"src/rttr/parameter_info.h",
		"src/rttr/registration",
		"src/rttr/registration_friend",
		"src/rttr/registration.h",
		"src/rttr/registration_friend.h",
		"src/rttr/sequential_mapper.h",
		"src/rttr/string_view.h",
		"src/rttr/rttr_cast.h",
		"src/rttr/rttr_enable.h",
		"src/rttr/type",
		"src/rttr/type.h",
		"src/rttr/variant.h",
		"src/rttr/variant_associative_view.h",
		"src/rttr/variant_sequential_view.h",
		"src/rttr/wrapper_mapper.h",
		"src/rttr/detail/base/core_prerequisites.h",
		"src/rttr/detail/base/version.h.in",
		"src/rttr/detail/base/version.rc.in",
		"src/rttr/detail/comparison/comparable_types.h",
		"src/rttr/detail/comparison/compare_array_less.h",
		"src/rttr/detail/comparison/compare_array_less_impl.h",
		"src/rttr/detail/comparison/compare_array_equal.h",
		"src/rttr/detail/comparison/compare_array_equal_impl.h",
		"src/rttr/detail/comparison/compare_equal.h",
		"src/rttr/detail/comparison/compare_equal_impl.h",
		"src/rttr/detail/comparison/compare_less.h",
		"src/rttr/detail/comparison/compare_less_impl.h",
		"src/rttr/detail/constructor/constructor_invoker.h",
		"src/rttr/detail/constructor/constructor_wrapper.h",
		"src/rttr/detail/constructor/constructor_wrapper_defaults.h",
		"src/rttr/detail/constructor/constructor_wrapper_base.h",
		"src/rttr/detail/conversion/std_conversion_functions.h",
		"src/rttr/detail/conversion/number_conversion.h",
		"src/rttr/detail/default_arguments/default_arguments.h",
		"src/rttr/detail/default_arguments/invoke_with_defaults.h",
		"src/rttr/detail/destructor/destructor_wrapper.h",
		"src/rttr/detail/destructor/destructor_wrapper_base.h",
		"src/rttr/detail/enumeration/enumeration_helper.h",
		"src/rttr/detail/enumeration/enumeration_wrapper.h",
		"src/rttr/detail/enumeration/enumeration_wrapper_base.h",
		"src/rttr/detail/enumeration/enum_data.h",
		"src/rttr/detail/filter/filter_item_funcs.h",
		"src/rttr/detail/impl/argument_impl.h",
		"src/rttr/detail/impl/array_range_impl.h",
		"src/rttr/detail/impl/associative_mapper_impl.h",
		"src/rttr/detail/impl/enum_flags_impl.h",
		"src/rttr/detail/impl/instance_impl.h",
		"src/rttr/detail/impl/rttr_cast_impl.h",
		"src/rttr/detail/impl/sequential_mapper_impl.h",
		"src/rttr/detail/impl/string_view_impl.h",
		"src/rttr/detail/impl/wrapper_mapper_impl.h",
		"src/rttr/detail/library/library_p.h",
		"src/rttr/detail/metadata/metadata.h",
		"src/rttr/detail/metadata/metadata_handler.h",
		"src/rttr/detail/method/method_accessor.h",
		"src/rttr/detail/method/method_invoker.h",
		"src/rttr/detail/method/method_wrapper.h",
		"src/rttr/detail/method/method_wrapper_base.h",
		"src/rttr/detail/misc/argument_wrapper.h",
		"src/rttr/detail/misc/argument_extractor.h",
		"src/rttr/detail/misc/class_item_mapper.h",
		"src/rttr/detail/misc/data_address_container.h",
		"src/rttr/detail/misc/flat_map.h",
		"src/rttr/detail/misc/flat_multimap.h",
		"src/rttr/detail/misc/function_traits.h",
		"src/rttr/detail/misc/iterator_wrapper.h",
		"src/rttr/detail/misc/misc_type_traits.h",
		"src/rttr/detail/misc/register_wrapper_mapper_conversion.h",
		"src/rttr/detail/misc/sequential_container_type_traits.h",
		"src/rttr/detail/misc/std_type_traits.h",
		"src/rttr/detail/misc/template_type_trait.h",
		"src/rttr/detail/misc/template_type_trait_impl.h",
		"src/rttr/detail/misc/utility.h",
		"src/rttr/detail/parameter_info/parameter_infos.h",
		"src/rttr/detail/parameter_info/parameter_infos_compare.h",
		"src/rttr/detail/parameter_info/parameter_names.h",
		"src/rttr/detail/parameter_info/parameter_info_wrapper_base.h",
		"src/rttr/detail/parameter_info/parameter_info_wrapper.h",
		"src/rttr/detail/policies/prop_policies.h",
		"src/rttr/detail/policies/meth_policies.h",
		"src/rttr/detail/policies/ctor_policies.h",
		"src/rttr/detail/property/property_accessor.h",
		"src/rttr/detail/property/property_wrapper.h",
		"src/rttr/detail/property/property_wrapper_base.h",
		"src/rttr/detail/property/property_wrapper_func.h",
		"src/rttr/detail/property/property_wrapper_member_func.h",
		"src/rttr/detail/property/property_wrapper_member_object.h",
		"src/rttr/detail/property/property_wrapper_object.h",
		"src/rttr/detail/registration/bind_types.h",
		"src/rttr/detail/registration/bind_impl.h",
		"src/rttr/detail/registration/register_base_class_from_accessor.h",
		"src/rttr/detail/registration/registration_impl.h",
		"src/rttr/detail/registration/registration_executer.h",
		"src/rttr/detail/registration/registration_manager.h",
		"src/rttr/detail/registration/registration_state_saver.h",
		"src/rttr/detail/type/accessor_type.h",
		"src/rttr/detail/type/base_classes.h",
		"src/rttr/detail/type/get_create_variant_func.h",
		"src/rttr/detail/type/get_derived_info_func.h",
		"src/rttr/detail/type/type_converter.h",
		"src/rttr/detail/type/type_comparator.h",
		"src/rttr/detail/type/type_data.h",
		"src/rttr/detail/type/type_register.h",
		"src/rttr/detail/type/type_impl.h",
		"src/rttr/detail/type/type_name.h",
		"src/rttr/detail/type/type_register_p.h",
		"src/rttr/detail/type/type_string_utils.h",
		"src/rttr/detail/variant/variant_compare.h",
		"src/rttr/detail/variant/variant_data.h",
		"src/rttr/detail/variant/variant_data_converter.h",
		"src/rttr/detail/variant/variant_data_policy.h",
		"src/rttr/detail/variant/variant_impl.h",
		"src/rttr/detail/variant_associative_view/variant_associative_view_private",
		"src/rttr/detail/variant_associative_view/variant_associative_view_creator",
		"src/rttr/detail/variant_associative_view/variant_associative_view_creator",
		"src/rttr/detail/variant_sequential_view/variant_sequential_view_private.h",
		"src/rttr/detail/variant_sequential_view/variant_sequential_view_creator_i",
		"src/rttr/detail/variant_sequential_view/variant_sequential_view_creator.h",

		"src/rttr/constructor.cpp",
		"src/rttr/destructor.cpp",
		"src/rttr/enumeration.cpp",
		"src/rttr/library.cpp",
		"src/rttr/method.cpp",
		"src/rttr/parameter_info.cpp",
		"src/rttr/policy.cpp",
		"src/rttr/property.cpp",
		"src/rttr/registration.cpp",
		"src/rttr/type.cpp",
		"src/rttr/variant.cpp",
		"src/rttr/variant_associative_view.cpp",
		"src/rttr/variant_sequential_view.cpp",
		"src/rttr/detail/comparison/compare_equal.cpp",
		"src/rttr/detail/comparison/compare_less.cpp",
		"src/rttr/detail/misc/standard_types.cpp",
		"src/rttr/detail/conversion/std_conversion_functions.cpp",
		"src/rttr/detail/constructor/constructor_wrapper_base.cpp",
		"src/rttr/detail/destructor/destructor_wrapper_base.cpp",
		"src/rttr/detail/enumeration/enumeration_helper.cpp",
		"src/rttr/detail/enumeration/enumeration_wrapper_base.cpp",
		"src/rttr/detail/library/library_win.cpp",
		"src/rttr/detail/library/library_unix.cpp",
		"src/rttr/detail/method/method_wrapper_base.cpp",
		"src/rttr/detail/parameter_info/parameter_info_wrapper_base.cpp",
		"src/rttr/detail/property/property_wrapper_base.cpp",
		"src/rttr/detail/registration/registration_executer.cpp",
		"src/rttr/detail/registration/registration_state_saver.cpp",
		"src/rttr/detail/type/type_data.cpp",
		"src/rttr/detail/type/type_register.cpp",
		"src/rttr/detail/variant/variant_compare.cpp"
	}

	includedirs
	{
		"src"
	}

	defines
	{
		"NOMINMAX"
	}

	filter "system:windows"
		cppdialect "C++11"
		staticruntime "on"
		systemversion "latest"

	filter "system:linux"
		cppdialect "C++11"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "On"
	
	filter "configurations:Release"
		runtime "Release"
		optimize "On"
