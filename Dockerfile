# Use an official Ruby base image
FROM ruby:3.1

# Environment setup with UTF-8 locale
ENV LANG=C.UTF-8 \
    LANGUAGE=C.UTF-8 \
    LC_ALL=C.UTF-8 \
    BUNDLER_VERSION=2.4.22

# Set working directory
WORKDIR /srv/jekyll

# Install system dependencies for Jekyll and building native gems
RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev nodejs

# Install the exact bundler version for consistency
RUN gem install bundler:$BUNDLER_VERSION

# Copy Gemfile and lock file first for layer caching
COPY Gemfile Gemfile.lock ./

# Install gems
RUN bundle install

# Copy the rest of the project
COPY . .

# Expose the default Jekyll port
EXPOSE 4000

# Start the Jekyll server
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--port", "4000", "--watch", "--force_polling", "--drafts"]
