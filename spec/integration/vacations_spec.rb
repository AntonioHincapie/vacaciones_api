require 'swagger_helper'

describe 'Vacations' do
  path '/api/v1/vacations' do
    get 'List vacations' do
      tags 'Vacations'
      description 'List all vacations'
      produces 'application/json'

      response '200', 'OK' do
        schema type: :object,
          properties: {
            id: { type: :integer },
            start_date: { type: :string },
            end_date: { type: :string },
            department: { type: :string },
            employee_name: { type: :string },
            created_at: { type: :string },
            updated_at: { type: :string }
          }
        run_test!
      end
    end
  end

  path '/api/v1/vacations' do
    post 'Create a vacation' do
      tags 'Vacations'
      consumes 'application/json'
      produces 'application/json'

      parameter name: :vacation,
        in: :body,
        description: 'Create a vacation',
        schema: {
          type: :object,
          properties: {
            start_date: { type: :string },
            end_date: { type: :string },
            department: { type: :string },
            employee_name: { type: :string }
          },
          required: %w[start_date end_date department employee_name]
      }

      response '201', 'OK' do
        schema type: :object,
          properties: {
            id: { type: :integer },
            start_date: { type: :string },
            end_date: { type: :string },
            department: { type: :string },
            employee_name: { type: :string },
            created_at: { type: :string },
            updated_at: { type: :string }
          }
        run_test!
      end

      response '422', 'Unprocessable entity' do
        run_test!
      end
    end
  end

  path '/api/v1/vacations/{id}' do
    get 'Show a vacation' do
      tags 'Vacations'
      description 'Show a vacation'
      produces 'application/json'

      parameter name: :id,
        in: :path,
        type: :integer,
        required: true,
        description: 'Vacation identification'

      response '200', 'OK' do
        schema type: :object,
          properties: {
            id: { type: :integer },
            start_date: { type: :string },
            end_date: { type: :string },
            department: { type: :string },
            employee_name: { type: :string },
            created_at: { type: :string },
            updated_at: { type: :string }
          }
        run_test!
      end

      response '401', 'Unauthorized' do
        run_test!
      end

      response '404', 'Not Found' do
        run_test!
      end
    end
  end

  path '/api/v1/vacations/{id}' do
    put 'Updates a vacation' do
      tags 'Vacations'
      description 'Updates a vacation'
      consumes 'application/json'
      produces 'application/json'

      parameter name: :id,
        in: :path,
        type: :integer,
        required: true,
        description: 'Vacation identification'

      parameter name: :vacation,
        in: :body,
        description: 'Updates a vacation',
        schema: {
          type: :object,
          properties: {
            start_date: { type: :string },
            end_date: { type: :string },
            department: { type: :string },
            employee_name: { type: :string }
          }
        }
      response '200', 'OK' do
        schema type: :object,
          properties: {
            id: { type: :integer },
            start_date: { type: :string },
            end_date: { type: :string },
            department: { type: :string },
            employee_name: { type: :string },
            created_at: { type: :string },
            updated_at: { type: :string }
          }
        run_test!
      end

      response '404', 'Not Found' do
        run_test!
      end

      response '422', 'Unprocessable entity' do
        run_test!
      end
    end
  end

  path '/api/v1/vacations/{id}' do
    delete 'Delete a vacations' do
      tags 'Vacations'
      description 'Delete a vacation'
      produces 'application/json'

      parameter name: :id,
        in: :path,
        type: :integer,
        required: true,
        description: 'Vacation identification'

      response '204', 'OK' do
        run_test!
      end

      response '404', 'Not Found' do
        run_test!
      end
    end
  end
end
