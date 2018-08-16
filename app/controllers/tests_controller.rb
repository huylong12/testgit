class TestsController < ApplicationController
   require 'git'
  # before_action :set_test, only: [:show, :edit, :update, :destroy]

  before_action :config_git
   before_action :read_git
  before_action :write_git


  # GET /tests
  # GET /tests.json
  def index
    # g.with_temp_index do

    #    g.read_tree(tree3) # calls self.index.read_tree
    #    g.read_tree(tree1, :prefix => 'hi/')

    #    c = g.commit_tree('message')
    #    # or #
    #    t = g.write_tree
    #    c = g.commit_tree(t, :message => 'message', :parents => [sha1, sha2])

    #    g.branch('branch_name').update_ref(c)
    #    g.update_ref(branch, c)

    #    g.with_temp_working do # new blank working directory
    #      g.checkout
    #      g.checkout(another_index)
    #      g.commit # commits to temp_index
    #    end
    #  end

    #  g.set_index('/path/to/index')


    #  g.with_index(path) do
    #    # calls set_index, then switches back after
    #  end

    #  g.with_working(dir) do
    #  # calls set_working, then switches back after
    #  end

    #  g.with_temp_working(dir) do
    #    g.checkout_index(:prefix => dir, :path_limiter => path)
    #    # do file work
    #    g.commit # commits to index
    #  end
  end

  def config_git
    Git.configure do |config|
      # debugger
      # If you want to use a custom git binary
      config.git_ssh = 'https://github.com/huylong12/testgit/tree/master'
    end

  end


   def read_git
     
      g = Git.open(working_dir = '\Sites\testgit', :log => Logger.new(STDOUT))
      debugger
      g.add 'view/tests/_form.html.erb'
      # debugger
     # g.index
     # g.index.readable?
  #   g.index.writable?
  #   g.repo
  #   g.dir

  #   g.log   # returns array of Git::Commit objects
  #   g.log.since('2 weeks ago')
  #   g.log.between('v2.5', 'v2.6')
  #   g.log.each {|l| puts l.sha }
  #   g.gblob('v2.5:Makefile').log.since('2 weeks ago')

  #   g.object('HEAD^').to_s  # git show / git rev-parse
  #   g.object('HEAD^').contents
  #   g.object('v2.5:Makefile').size
  #   g.object('v2.5:Makefile').sha

  #   g.gtree(treeish)
  #   g.gblob(treeish)
  #   g.gcommit(treeish)

      # debugger
     # commit = g.gcommit('1cc8667014381')

  #   commit.gtree
  #   commit.parent.sha
  #   commit.parents.size
  #   commit.author.name
  #   commit.author.email
  #   commit.author.date.strftime("%m-%d-%y")
  #   commit.committer.name
  #   commit.date.strftime("%m-%d-%y")
  #   commit.message

  #   tree = g.gtree("HEAD^{tree}")

  #   tree.blobs
  #   tree.subtrees
  #   tree.children # blobs and subtrees

  #   g.revparse('v2.5:Makefile')

  #   g.branches # returns Git::Branch objects
  #   g.branches.local
  #   g.branches.remote
  #   g.branches[:master].gcommit
  #   g.branches['origin/master'].gcommit

  #   g.grep('hello')  # implies HEAD
  #   g.blob('v2.5:Makefile').grep('hello')
  #   g.tag('v2.5').grep('hello', 'docs/')
  #   g.describe()
  #   g.describe('0djf2aa')
  #   g.describe('HEAD', {:all => true, :tags => true})

  #   g.diff(commit1, commit2).size
  #   g.diff(commit1, commit2).stats
  #   g.diff(commit1, commit2).name_status
  #   g.gtree('v2.5').diff('v2.6').insertions
  #   g.diff('gitsearch1', 'v2.5').path('lib/')
  #   g.diff('gitsearch1', @git.gtree('v2.5'))
  #   g.diff('gitsearch1', 'v2.5').path('docs/').patch
  #   g.gtree('v2.5').diff('v2.6').patch

  #   g.gtree('v2.5').diff('v2.6').each do |file_diff|
  #      puts file_diff.path
  #      puts file_diff.patch
  #      puts file_diff.blob(:src).contents
  #   end

  #   g.config('user.name')  # returns 'Scott Chacon'
  #   g.config # returns whole config hash

  #   g.tags # returns array of Git::Tag objects

  #   g.show()
  #   g.show('HEAD')
  #   g.show('v2.8', 'README.md')

  #   Git.ls_remote('https://github.com/ruby-git/ruby-git.git') # returns a hash containing the available references of the repo.
  #   Git.ls_remote('/path/to/local/repo')
  #   Git.ls_remote() # same as Git.ls_remote('.')
   end

   def write_git
      # debugger
       # g = Git.init
       #  Git.init('project1')
  #      Git.init('/home/schacon/proj',
  #       { :repository => '/opt/git/proj.git',
  #          :index => '/tmp/index'} )
        # debugger
       # g = Git.clone('https://github.com/huylong12/testgit.git', 'master', :path => '/tmp/checkout')
  #    # g.config('user.name', 'Scott Chacon')
  #    # g.config('user.email', 'email@email.com')

  #    # g.add                                   # git add -- "."
  #    # g.add(:all=>true)                       # git add --all -- "."
  #    # g.add('file_path')                      # git add -- "file_path"
  #    # g.add(['file_path_1', 'file_path_2'])   # git add -- "file_path_1" "file_path_2"

  #    # g.remove()                 # git rm -f -- "."
  #    # g.remove('file.txt')           # git rm -f -- "file.txt"
  #    # g.remove(['file.txt', 'file2.txt'])    # git rm -f -- "file.txt" "file2.txt"
  #    # g.remove('file.txt', :recursive => true)   # git rm -f -r -- "file.txt"
  #    # g.remove('file.txt', :cached => true)    # git rm -f --cached -- "file.txt"

  #    # g.commit('message')
  #    # g.commit_all('message')

  #    # g = Git.clone(repo, 'myrepo')
  #    # g.chdir do
  #    #  new_file('test-file', 'blahblahblah')
  #    #  g.status.changed.each do |file|
  #    #   puts file.blob(:index).contents
  #    #  end
  #    # end

  #    # g.reset # defaults to HEAD
  #    # g.reset_hard(Git::Commit)

  #    # g.branch('new_branch') # creates new or fetches existing
  #    # g.branch('new_branch').checkout
  #    # g.branch('new_branch').delete
  #    # g.branch('existing_branch').checkout
  #    # g.branch('master').contains?('existing_branch')

  #    # g.checkout('new_branch')
  #    # g.checkout(g.branch('new_branch'))

  #    # g.branch(name).merge(branch2)
  #    # g.branch(branch2).merge  # merges HEAD with branch2

  #    # g.branch(name).in_branch(message)  # add files }  # auto-commits
  #    # g.merge('new_branch')
  #    # g.merge('origin/remote_branch')
  #    # g.merge(g.branch('master'))
  #    # g.merge([branch1, branch2])

  #    # r = g.add_remote(name, uri)  # Git::Remote
  #    # r = g.add_remote(name, Git::Base)  # Git::Remote

  #    # g.remotes  # array of Git::Remotes
  #    # g.remote(name).fetch
  #    # g.remote(name).remove
  #    # g.remote(name).merge
  #    # g.remote(name).merge(branch)

  #    # g.fetch
  #    # g.fetch(g.remotes.first)
  #    # g.fetch('origin', {:ref => 'some/ref/head'} )

  #    # g.pull
  #    # g.pull(Git::Repo, Git::Branch) # fetch and a merge

  #    # g.add_tag('tag_name') # returns Git::Tag
  #    # g.add_tag('tag_name', 'object_reference')
  #    # g.add_tag('tag_name', 'object_reference', {:options => 'here'})
  #    # g.add_tag('tag_name', {:options => 'here'})

  #    # # Options:
  #    # #   :a | :annotate
  #    # #   :d
  #    # #   :f
  #    # #   :m | :message
  #    # #   :s

  #    # g.delete_tag('tag_name')

  #    # g.repack

  #    # g.push
  #    # g.push(g.remote('name'))

   end


end
