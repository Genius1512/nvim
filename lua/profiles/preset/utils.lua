function SaveFile()
    local file_name = vim.fn.bufname()
    if file_name == "" then
        file_name = vim.fn.input("Filename (esc or leave empty to cancel): ", "", "file")
        if file_name == nil or file_name == "" then
            return
        end
    end
    
    vim.cmd("write " .. file_name)
end

return {
    save_file = SaveFile,
}