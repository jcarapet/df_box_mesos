# df_box_mesos-cookbook

This is a quick cookbook that installs a standalone mesos master and slave onto the system. This is not intended for production, and is a poor attempt at POC. Seriously, it just installs the bash scripts that Mesosphere uses. They can be found at http://mesosphere.com/docs/getting-started/developer/single-node-install/

## Supported Platforms

Ubuntu: 12.04

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['df_box_mesos']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage
don't. This is a project that I am going to expand upon later. And by expand, I mean probably forget about because more pressing issues with version pinning will come about with community cookbooks. 

### df_box_mesos::default

Include `df_box_mesos` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[df_box_mesos::default]"
  ]
}
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request

## License and Authors

Author:: YOUR_NAME (<YOUR_EMAIL>)
