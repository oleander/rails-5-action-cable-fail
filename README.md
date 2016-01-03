# README

## Start

1. Ensure Ruby 2.2.4+ is installed.
2. Install deps. `bundle install`
3. Start redis. `redis-server`
4. Start rails. `rails s`

## How to reproduce

1. Visit [localhost:3000/pages/index](http://localhost:3000/pages/index)
2. Wait 5 second for the page to load.
3. Reload the page.

**Expected**: The text `This is a background job` should be displayed in step 2.  
**Happens**: The text is shown when the page is reloaded in step 3.