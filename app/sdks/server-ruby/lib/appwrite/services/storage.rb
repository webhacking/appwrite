module Appwrite
    class Storage < Service

        def list_files(search: '', limit: 25, offset: 0, order_type: 'ASC')
            path = '/storage/files'

            params = {
                'search': search, 
                'limit': limit, 
                'offset': offset, 
                'orderType': order_type
            }

            return @client.call('get', path, {
                'content-type' => 'application/json',
            }, params);
        end

        def create_file(file:, read:, write:)
            path = '/storage/files'

            params = {
                'file': file, 
                'read': read, 
                'write': write
            }

            return @client.call('post', path, {
                'content-type' => 'multipart/form-data',
            }, params);
        end

        def get_file(file_id:)
            path = '/storage/files/{fileId}'
                .gsub('{file_id}', file_id)

            params = {
            }

            return @client.call('get', path, {
                'content-type' => 'application/json',
            }, params);
        end

        def update_file(file_id:, read:, write:)
            path = '/storage/files/{fileId}'
                .gsub('{file_id}', file_id)

            params = {
                'read': read, 
                'write': write
            }

            return @client.call('put', path, {
                'content-type' => 'application/json',
            }, params);
        end

        def delete_file(file_id:)
            path = '/storage/files/{fileId}'
                .gsub('{file_id}', file_id)

            params = {
            }

            return @client.call('delete', path, {
                'content-type' => 'application/json',
            }, params);
        end

        def get_file_download(file_id:)
            path = '/storage/files/{fileId}/download'
                .gsub('{file_id}', file_id)

            params = {
            }

            return @client.call('get', path, {
                'content-type' => 'application/json',
            }, params);
        end

        def get_file_preview(file_id:, width: 0, height: 0, quality: 100, background: '', output: '')
            path = '/storage/files/{fileId}/preview'
                .gsub('{file_id}', file_id)

            params = {
                'width': width, 
                'height': height, 
                'quality': quality, 
                'background': background, 
                'output': output
            }

            return @client.call('get', path, {
                'content-type' => 'application/json',
            }, params);
        end

        def get_file_view(file_id:, as: '')
            path = '/storage/files/{fileId}/view'
                .gsub('{file_id}', file_id)

            params = {
                'as': as
            }

            return @client.call('get', path, {
                'content-type' => 'application/json',
            }, params);
        end


        protected

        private
    end 
end